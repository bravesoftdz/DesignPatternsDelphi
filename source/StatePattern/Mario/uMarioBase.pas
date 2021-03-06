unit uMarioBase;

interface

uses
  uMarioStateAPI;

type
  TMarioBase = class(TInterfacedObject, IMarioStateAPI)
  private
    FnImage: integer;
    function GetImage: integer;
    procedure SetImage(const pnImage: integer);
  public
    function NovaVida: IMarioStateAPI; virtual;
    function PegarCogumelo: IMarioStateAPI; virtual; abstract;
    function LevarDano: IMarioStateAPI; virtual; abstract;
    property nImage: integer read GetImage write SetImage;
  end;

implementation

uses uMarioSmall;

{ TMarioBase }

function TMarioBase.GetImage: integer;
begin
  result := FnImage;
end;

function TMarioBase.NovaVida: IMarioStateAPI;
begin
  result := TMarioSmall.Create;
end;

procedure TMarioBase.SetImage(const pnImage: integer);
begin
  FnImage := pnImage;
end;

end.
