table 50117 "Line Entry"
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
        field(5; "Line Description"; Text[50])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(PK; "Header No.", "Line No.")
        {
            Clustered = true;
        }
    }
}