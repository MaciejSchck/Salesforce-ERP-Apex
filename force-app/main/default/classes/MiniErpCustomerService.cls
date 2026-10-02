public class MiniErpCustomerService {

    public static String getCustomers() {

        Http http = new Http();

        HttpRequest request = new HttpRequest();

        request.setEndpoint('https://brick-yesterday-slacker.ngrok-free.dev/api/customers');

        request.setMethod('GET');

        HttpResponse response = http.send(request);

        return response.getBody();
    }
}