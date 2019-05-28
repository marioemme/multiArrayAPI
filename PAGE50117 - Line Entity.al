page 50117 "Line Entity"
{
    PageType = API;
    Caption = 'Line Entity';
    APIPublisher = 'reply';
    APIGroup = 'test';
    APIVersion = 'v1.0';
    EntityName = 'line';
    EntitySetName = 'lines';
    SourceTable = "Line Entry";
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(lineNo; "Line No.")
                {
                    Caption = 'lineNo';
                }
                field(lineDescription; "Line Description")
                {
                    Caption = 'lineDescription';
                }
                part(sublines; "Subline Entity")
                {
                    EntityName = 'subline';
                    EntitySetName = 'sublines';
                    SubPageLink = "Header No." = field ("Header No."), "Line No." = field ("Line No.");
                }
            }
        }
    }
}