page 50116 "Header Entity"
{
    PageType = API;
    Caption = 'Header Entity';
    APIPublisher = 'reply';
    APIGroup = 'test';
    APIVersion = 'v1.0';
    EntityName = 'header';
    EntitySetName = 'headers';
    SourceTable = "Header Entry";
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(no; "No.")
                {
                    Caption = 'no';
                }
                field(description; Description)
                {
                    Caption = 'description';
                }
                part(lines; "Line Entity")
                {
                    EntityName = 'line';
                    EntitySetName = 'lines';
                    SubPageLink = "Header No." = field ("No.");
                }
            }
        }
    }
}