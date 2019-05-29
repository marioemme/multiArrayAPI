codeunit 50100 "Call API Mgt."

{
    procedure CallInternalAPI(BodyRequest: Text; ObjType: ObjectType; ObjectId: Integer);
    var
        Client: HttpClient;
        Content: HttpContent;
        Reponse: HttpResponseMessage;
        Url: Text;
    begin
        Url := GetUrl(ClientType::Api, CompanyName, ObjType, ObjectId);
        GetBody(BodyRequest);
        //Authenticate(Client);
        ConstructRequest(Content, BodyRequest);
        Client.UseWindowsAuthentication('ma.longo', 'Accatagliato.89-3', 'REPLYNET');
        if not IsSuccess(Client.Post(Url, Content, Reponse), Reponse) then
            exit;
        //ProcessResponse(Content);
    end;

    local procedure ConstructRequest(Content: HttpContent; BodyRequest: Text): Boolean;
    var
        JObject: JsonObject;
        Headers: HttpHeaders;
        JArray: JsonArray;
    begin
        Content.WriteFrom(BodyRequest);

        Content.GetHeaders(Headers);
        Headers.Clear();
        Headers.Add('Content-type', 'application/json')
    end;

    local procedure Authenticate(Client: HttpClient) //HttpClient è già ByReference
    begin
        Client.DefaultRequestHeaders.Add('x-function-key', 'InserireQuiIlCodiceAzure')
    end;

    local procedure IsSuccess(TransportOk: Boolean; Response: HttpResponseMessage): Boolean
    var
        Body: Text;
    begin
        if TransportOk and Response.IsSuccessStatusCode() then
            exit(true);

        if not TransportOk then
            Error('Something wrong here');

        Response.Content.ReadAs(Body);
        Error('Somethings wrong here! %1 %2 %3', Response.HttpStatusCode, Response.ReasonPhrase, Body);
    end;

    local procedure GetBody(var Body: Text)
    begin
        Body := '{"no": "TEST006","description": "this is test 006"}';
    end;
}