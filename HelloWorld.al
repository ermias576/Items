pageextension 50103 ItemExt extends "Item List"
{


    actions
    {
        addafter(History)
        {
            action(ExportItem)
            {
                Caption = 'Export Item';
                Promoted = true;
                PromotedCategory = Process;
                Image = Export;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Xmlport.Run(50103, true, false);
                end;
            }
        }
    }
}