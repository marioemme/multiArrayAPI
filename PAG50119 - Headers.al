page 50119 Headers
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Header Entry";


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;

                }
                field(Description; Description)
                {
                    ApplicationArea = all;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Send request")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    CallAPIMgt: Codeunit "Call API Mgt.";
                begin
                    CallAPIMgt.CallInternalAPI('', ObjectType::Page, page::"Header Entity");
                    CurrPage.Update();
                end;
            }
        }
    }
}