unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VirtualTrees;

type
  TForm1 = class(TForm)
    VSTree: TVirtualStringTree;
    procedure FormCreate(Sender: TObject);
    procedure VSTreeGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.FormCreate(Sender: TObject);
var
  FirstRootNode,SecondRootNode,ChildNode: PVirtualNode;
  Data: PString;
begin
  // Specify how much data each node should hold. In this case, we use a string
  VSTree.NodeDataSize := SizeOf(String);

  // Add some root nodes
  FirstRootNode := VSTree.AddChild(nil); // Add a root node
  Data := VSTree.GetNodeData(FirstRootNode);
  Data^ := 'First Root Node';

  SecondRootNode := VSTree.AddChild(nil); // Add another root node
  Data := VSTree.GetNodeData(SecondRootNode);
  Data^ := 'Second Root Node';

  // Add child nodes
  ChildNode := VSTree.AddChild(VSTree.GetFirst); // Add a child to the first root node
  Data := VSTree.GetNodeData(ChildNode);
  Data^ := 'First Child of First Root_1';

  // Add child nodes
  ChildNode := VSTree.AddChild(FirstRootNode); // Add a child to the first root node
  Data := VSTree.GetNodeData(ChildNode);
  Data^ := 'Second Child of First Root_2';

  // Add child nodes
  ChildNode := VSTree.AddChild(SecondRootNode); // Add a child to the first root node
  Data := VSTree.GetNodeData(ChildNode);
  Data^ := 'First Child of Second Root_2';

  // Add child nodes
  ChildNode := VSTree.AddChild(SecondRootNode); // Add a child to the first root node
  Data := VSTree.GetNodeData(ChildNode);
  Data^ := 'Second Child of Second Root_2';

end;

procedure TForm1.VSTreeGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
  Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
var
  Data: PString;
begin
  Data := Sender.GetNodeData(Node);  // Retrieve node data
  if Assigned(Data) then
    CellText := Data^;  // Display the data in the nodes
end;

end.
