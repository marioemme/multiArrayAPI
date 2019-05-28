page 50119 "Sublines"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Subline Entry";


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Header No."; "Header No.")
                {
                    ApplicationArea = All;

                }
                field("Line No."; "Line No.")
                {
                    ApplicationArea = all;
                }
                field("Subline No."; "Subline No.")
                {
                    ApplicationArea = all;
                }
                field("Subline Description"; "Subline Description")
                {
                    ApplicationArea = all;
                }
            }
        }
        area(Factboxes)
        {

        }
    }
}