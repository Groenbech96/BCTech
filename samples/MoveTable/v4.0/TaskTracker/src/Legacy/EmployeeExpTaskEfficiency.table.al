table 50130 "Employee Exp. Task Efficiency"
{
    DataClassification = CustomerContent;
    // MovedFrom = '6b05135b-a955-449b-94cc-d1d5914a168b';
    ObsoleteReason = 'moving to Human Worker Efficiency Tracker app.';
    ObsoleteState = Moved;
    ObsoleteTag = '4.0.0.0';
    MovedTo = '6b05135b-a955-449b-94cc-d1d5914a168b';

    fields
    {
        field(1; "EmployeeNo."; Code[20])
        {
            Caption = 'Employee No.';
            TableRelation = Employee."No.";
        }
        field(2; "TaskCode"; Code[20])
        {
            Caption = 'Task Code';
#pragma warning disable AL0801
            // Table 'Task' is marked to be moved. Reason: moved to separate Task Tracker app.. Tag:
            TableRelation = Task.TaskCode;
#pragma warning restore AL0801
        }
        field(3; "Expected Efficiency Score"; Integer)
        {
        }
    }

    keys
    {
        key(Key1; "EmployeeNo.", "TaskCode")
        {
            Clustered = true;
        }
    }
}