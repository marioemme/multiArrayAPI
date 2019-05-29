page 50121 "Page fields 2"
{

    PageType = List;
    SourceTable = "Page Table Field";
    Caption = 'Page fields';

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Field ID"; "Field ID")
                {
                    ApplicationArea = All;
                }
                field("Page ID"; "Page ID")
                {
                    ApplicationArea = All;
                }
                field(Caption; Caption)
                {
                    ApplicationArea = All;
                }
                field(IsTableField; IsTableField)
                {
                    ApplicationArea = All;
                }
                field(Length; Length)
                {
                    ApplicationArea = All;
                }
                field(Status; Status)
                {
                    ApplicationArea = All;
                }
                field(Type; Type)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
