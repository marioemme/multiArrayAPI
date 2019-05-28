page 50118 "Subline Entity"
{
    PageType = API;
    Caption = 'Subline Entity';
    APIPublisher = 'reply';
    APIGroup = 'test';
    APIVersion = 'v1.0';
    EntityName = 'subline';
    EntitySetName = 'sublines';
    SourceTable = "Subline Entry";
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(sublineNo; "Subline No.")
                {
                    Caption = 'lineNo';
                }
                field(subLineDescription; "Subline Description")
                {
                    Caption = 'subLineDescription';
                }
            }
        }
    }
}