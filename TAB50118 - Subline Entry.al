table 50118 "Subline Entry"
{

    fields
    {
        field(1; "Header No."; Code[20])
        {
            Caption = 'Header No.';
        }
        field(2; "Line No."; integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Subline No."; integer)
        {
            Caption = 'Subline No.';
        }
        field(5; "Subline Description"; Text[50])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(PK; "Header No.", "Line No.", "Subline No.")
        {
            Clustered = true;
        }
    }
}