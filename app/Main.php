<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;
use SendGrid;


class Main extends Model
{
    // rave Variavles
    public $rave = 'live';
    public $raveSecret = "FLWSECK-718e57f31e948535ed4d6238655757f3-X";
    public $ravePublic = 'FLWPUBK-effe024b0280f2d0cad787114ca09996-X';
    public $raveSecretTest = 'FLWSECK-30b667c86c40676f65aa7aefbc660563-X';
    public $ravePublicTest = "FLWPUBK-9b6fde6be6302fca7f0f826a4bc72f26-X";


    // paystack Variavles
    public $paystack = 'live';
    public $paystackSecret = "sk_live_2d13d0c22e0db45b3b428918859c7e86bac9747c";
    public $paystackPublic = 'pk_live_0d82081d2b12ed42f9778e724ca6236bd808b946';
    public $paystackSecretTest = 'sk_test_62e170c9b5eede00aef08e1ec1ad4b42b067eeb1';
    public $paystackPublicTest = "pk_test_ebd763777186e828abf2e0e7e30edff548db0055";

    
    public function sendgrid($from,$to,$subject,$message)
    {
        $key = "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" ;
        $email = new \SendGrid\Mail\Mail(); 
        $email->setFrom("mygpa@chigisoft.com", "mygpa.app");
        $email->setSubject($subject);
        $email->addTo($to, "Customer");
        $email->addContent(
            "text/html", $message
        );
        $sendgrid = new \SendGrid($key);
        try {
            $response = $sendgrid->send($email);
            return $response;
        } catch (Exception $e) {
            return $e;
        }

    }

    public function email_register_noty($parameters)
    {           
        $message = 'Welcome to techcreek';           
        return $message;
    }

    public function code_generate($text)
    {
        $current_time = Carbon::now()->timestamp;
        $tran_id = $current_time;
        $tran_id = str_shuffle($tran_id);
        $tran_id = $this->string_strip($tran_id);
        $tran_id = substr($tran_id,0,4);

        return $tran_id;
    }
    
    public function raveVerify($trans_id){
        $status = 'false';
        if (!empty($trans_id)) {
            $headers = '';
            $type = 'POST';
            if ($this->rave == 'live') {
                $data = array('SECKEY'=>$this->raveSecret,'txref'=>$trans_id);
                $url = 'https://api.ravepay.co/flwv3-pug/getpaidx/api/v2/verify';
            }else{
                $data = array('SECKEY'=>$this->raveSecretTest,'txref'=>$trans_id);
                $url = 'https://ravesandboxapi.flutterwave.com/flwv3-pug/getpaidx/api/v2/verify';
            }
            //$response = $connect->connection($headers,$type,$url,$data);

            $data_string = json_encode($data);
            $ch = curl_init($url);                                                                      
            curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
            curl_setopt($ch, CURLOPT_POSTFIELDS, $data_string);                                              
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));

            $response = curl_exec($ch);

            $header_size = curl_getinfo($ch, CURLINFO_HEADER_SIZE);
            $header = substr($response, 0, $header_size);
            $body = substr($response, $header_size);

            curl_close($ch);

            $resp = json_decode($response, true);
            // dd($resp);
            if (isset($resp['data']['txref']) AND isset($resp['status'])) {
                if ($resp['data']['txref'] == $trans_id AND $resp['status'] == 'success') {
                    $data['status'] = 'true';
                    $data['amount'] = $resp['data']['amount'];
                }
            }else{
                $data['status'] = 'false';
                $data['amount'] = 0;
            }
            return $data;        }
    }

    public function paystackVerify($trans_id){

        if (!empty($trans_id)) {
            if ($this->paystack == 'live') {
                $secret_key = $this->paystackSecret;
            }else{
                $secret_key = $this->paystackSecretTest;
            }

            $result = array();
            //The parameter after verify/ is the transaction reference to be verified
            $url = 'https://api.paystack.co/transaction/verify/'.$trans_id;

            // dd($url);
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt(
            $ch, CURLOPT_HTTPHEADER, [
                'Authorization: Bearer '.$secret_key]
            );
            $request = curl_exec($ch);
            curl_close($ch);
        
            if ($request) {
                $result = json_decode($request, true);
                //dd($result);
                if($result["status"]){
                if($result['data']){
                    //something came in
                    if($result['data']['status'] == 'success'){
                    // the transaction was successful, you can deliver value
                    /* 
                    @ also remember that if this was a card transaction, you can store the 
                    @ card authorization to enable you charge the customer subsequently. 
                    @ The card authorization is in: 
                    @ $result['data']['authorization']['authorization_code'];
                    @ PS: Store the authorization with this email address used for this transaction. 
                    @ The authorization will only work with this particular email.
                    @ If the user changes his email on your system, it will be unusable
                    */

                        $data['status'] = 'true';
                        $data['amount'] = $result['data']['amount']/100;
                        $data['tx_id'] = $result['data']['reference'];

                    }else{
                    // the transaction was not successful, do not deliver value'
                    // print_r($result);  //uncomment this line to inspect the result, to check why it failed.

                        $data['status'] = 'false';
                        $data['amount'] = 0;
                    }
                }else{
                    // echo $result['message'];
                    $data['status'] = 'false';
                    $data['amount'] = 0;
                }
            
                }else{
                //print_r($result);
                // die("Something went wrong while trying to convert the request variable to json. Uncomment the print_r command to see what is in the result variable.");
                $data['status'] = 'false';
                $data['amount'] = 0;
            }
            }else{
                //var_dump($request);
                // die("Something went wrong while executing curl. Uncomment the var_dump line above this line to see what the issue is. Please check your CURL command to make sure everything is ok");
                $data['status'] = 'false';
                $data['amount'] = 0;
            }
            //dd($data);
            return $data;
        }

    }

    function removeNamespaceFromXML($xml)
    {
        // Because I know all of the the namespaces that will possibly appear in 
        // in the XML string I can just hard code them and check for 
        // them to remove them
        $toRemove = ['rap', 'turss', 'crim', 'cred', 'j', 'rap-code', 'evic'];
        // This is part of a regex I will use to remove the namespace declaration from string
        $nameSpaceDefRegEx = '(\S+)=["\']?((?:.(?!["\']?\s+(?:\S+)=|[>"\']))+.)["\']?';

        // Cycle through each namespace and remove it from the XML string
       foreach( $toRemove as $remove ) {
            // First remove the namespace from the opening of the tag
            $xml = str_replace('<' . $remove . ':', '<', $xml);
            // Now remove the namespace from the closing of the tag
            $xml = str_replace('</' . $remove . ':', '</', $xml);
            // This XML uses the name space with CommentText, so remove that too
            $xml = str_replace($remove . ':commentText', 'commentText', $xml);
            // Complete the pattern for RegEx to remove this namespace declaration
            $pattern = "/xmlns:{$remove}{$nameSpaceDefRegEx}/";
            // Remove the actual namespace declaration using the Pattern
            $xml = preg_replace($pattern, '', $xml, 1);
        }

        // Return sanitized and cleaned up XML with no namespaces
        return $xml;
    }

    function namespacedXMLToArray($xml)
    {
        // One function to both clean the XML string and return an array
        return json_decode(json_encode(simplexml_load_string(Main::removeNamespaceFromXML($xml))), true);
    }

    public function string_strip($value)
    {

        $mykey = str_replace("-", "", $value);
        $mykey = str_replace("-", "", $mykey);
        $mykey = str_replace("/", "", $mykey);
        $mykey = str_replace(":", "", $mykey);
        $mykey = str_replace(";", "", $mykey);
        $mykey = str_replace("{", "", $mykey);
        $mykey = str_replace("}", "", $mykey);
        $mykey = str_replace("[", "", $mykey);
        $mykey = str_replace("[", "", $mykey);
        $mykey = str_replace("`", "", $mykey);
        $mykey = str_replace("–", "", $mykey);
        $mykey = str_replace("–", "", $mykey);
        $mykey = str_replace("|", "", $mykey);
        $mykey = str_replace("?", "", $mykey);
        $mykey = str_replace("'", "", $mykey);
        $mykey = str_replace(",", "", $mykey);
        $mykey = str_replace("(", "", $mykey);
        $mykey = str_replace(")", "", $mykey);
        $mykey = str_replace("’", "", $mykey);
        $mykey = str_replace("&", "", $mykey);
        $mykey = str_replace("!", "", $mykey);
        $mykey = str_replace("@", "", $mykey);
        $mykey = str_replace("#", "", $mykey);
        $mykey = str_replace("$", "", $mykey);
        $mykey = str_replace("%", "", $mykey);
        $mykey = str_replace("^", "", $mykey);
        $mykey = str_replace("*", "", $mykey);
        $mykey = str_replace("=", "", $mykey);
        $mykey = str_replace("+", "", $mykey);
        $mykey = str_replace("^", "", $mykey);
        $mykey = str_replace(".", "", $mykey);
        $value = str_replace(" ", "", $mykey);

        return $value;
    }
}
