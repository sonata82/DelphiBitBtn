{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit tdelphibitbtn;

{$warn 5023 off : no warning about unused units}
interface

uses
  DelphiBitBtn, LazarusPackageIntf;

implementation

procedure Register;
begin
  RegisterUnit('DelphiBitBtn', @DelphiBitBtn.Register);
end;

initialization
  RegisterPackage('tdelphibitbtn', @Register);
end.
