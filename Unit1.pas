unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList, VirtualTrees;

type
  TForm1 = class(TForm)
    VirtualStringTree1: TVirtualStringTree;
    Label1: TLabel;
    edtName: TEdit;
    Button1: TButton;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    File2: TMenuItem;
    Help1: TMenuItem;
    miFileOpen: TMenuItem;
    miFileSave: TMenuItem;
    miFileExit: TMenuItem;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    ListBox1: TListBox;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure miFileOpenClick(Sender: TObject);
    procedure miFileExitClick(Sender: TObject);
    procedure btnCheckClick(Sender: TObject);
    procedure GetSelectedRadioButtonLabel;
    procedure AddNewItemWithRandomNumber;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure VirtualStringTree1GetText(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
      var CellText: string);
    procedure PopulateTree;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure VirtualStringTree1GetNodeDataSize(Sender: TBaseVirtualTree; var NodeDataSize: Integer);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  // Add items to ListBox1 at runtime
  ListBox1.Items.AddStrings(['Apple', 'Banana', 'Cherry', 'Date', 'Elderberry']);
  Randomize; // Ensures randomness for each run of the program
  VirtualStringTree1.OnGetNodeDataSize := VirtualStringTree1GetNodeDataSize;

  // Set text rendering
  VirtualStringTree1.OnGetText := VirtualStringTree1GetText;

  // Populate the tree
  PopulateTree;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage('Hello, ' + edtName.Text + '!');
end;

procedure TForm1.AddNewItemWithRandomNumber;
var
  RandomNumber: Integer;
  NewItem: String;
begin
  // Generate a random 4-digit number
  RandomNumber := Random(10000); // Generates a number between 0 and 9999

  // Format the new item string
  NewItem := Format('New item %04d', [RandomNumber]); // Ensures 4 digits, padding with leading zeros if needed

  // Add the new item to the ListBox
  ListBox1.Items.Add(NewItem);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 // Show selected item
  if ListBox1.ItemIndex <> -1 then
    ShowMessage('Selected item: ' + ListBox1.Items[ListBox1.ItemIndex])
  else
    ShowMessage('No item selected.');
end;

procedure TForm1.Button3Click(Sender: TObject);

begin
// Add a new item
//  ListBox1.Items.Add('New Item' );
  AddNewItemWithRandomNumber;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  SelectedItem: String;
begin
 // Delete the selected item
  if ListBox1.ItemIndex <> -1 then
  begin
    // Retrieve the selected item's name
    SelectedItem := ListBox1.Items[ListBox1.ItemIndex];
    ListBox1.Items.Delete(ListBox1.ItemIndex);
    ShowMessage(Format('Item "%s" has been deleted.', [SelectedItem]));
  end
  else
    ShowMessage('No item selected to delete.');
end;


procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  ShowMessage('Clicked on ' + CheckBox1.Caption)
end;


procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  ShowMessage('Clicked on ' + CheckBox2.Caption)
end;


procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  ShowMessage('Clicked on ' + CheckBox3.Caption)
end;


procedure TForm1.miFileExitClick(Sender: TObject);
begin
  Close; // Closes the application
end;


procedure TForm1.miFileOpenClick(Sender: TObject);
begin
  ShowMessage('Open File selected!');
end;


procedure TForm1.GetSelectedRadioButtonLabel;
begin
  if RadioButton1.Checked then
    ShowMessage('Selected: ' + RadioButton1.Caption)
  else if RadioButton2.Checked then
    ShowMessage('Selected: ' + RadioButton2.Caption)
  else if RadioButton3.Checked then
    ShowMessage('Selected: ' + RadioButton3.Caption)
  else
    ShowMessage('No option selected.');
end;

procedure TForm1.btnCheckClick(Sender: TObject); begin
  GetSelectedRadioButtonLabel;
end;


type
  TMyNodeData = record
    Text: string;
  end;


procedure TForm1.VirtualStringTree1GetNodeDataSize(Sender: TBaseVirtualTree; var NodeDataSize: Integer);
begin
  NodeDataSize := SizeOf(TMyNodeData); // Define the size of the node's data
end;

procedure TForm1.VirtualStringTree1GetText(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
var
  Data: ^TMyNodeData;
begin
  Data := VirtualStringTree1.GetNodeData(Node);
  if Assigned(Data) then
    CellText := Data^.Text; // Display the node's text
end;

procedure TForm1.PopulateTree;
var
  RootNode, ChildNode: PVirtualNode;
  Data: ^TMyNodeData;
begin
  VirtualStringTree1.Clear; // Clear the tree before adding new nodes

  // Add root node
  RootNode := VirtualStringTree1.AddChild(nil);
  Data := VirtualStringTree1.GetNodeData(RootNode);
  Data^.Text := 'Root Node';

  // Add a child node
  ChildNode := VirtualStringTree1.AddChild(RootNode);
  Data := VirtualStringTree1.GetNodeData(ChildNode);
  Data^.Text := 'Child Node 1';

  // Add another child node
  ChildNode := VirtualStringTree1.AddChild(RootNode);
  Data := VirtualStringTree1.GetNodeData(ChildNode);
  Data^.Text := 'Child Node 2';
end;

end.
