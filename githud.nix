{ mkDerivation, base, bytestring, data-default, directory, mtl
, network, parsec, process, stdenv, tasty, tasty-hunit
, tasty-quickcheck, tasty-smallcheck, temporary, text, unix
, utf8-string
}:
mkDerivation {
  pname = "githud";
  version = "3.2.1";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base bytestring data-default directory mtl network parsec process
    temporary text unix utf8-string
  ];
  executableHaskellDepends = [ base ];
  testHaskellDepends = [
    base mtl parsec tasty tasty-hunit tasty-quickcheck tasty-smallcheck
  ];
  homepage = "http://github.com/gbataille/gitHUD#readme";
  description = "Heads up, and you see your GIT context";
  license = stdenv.lib.licenses.bsd3;
}
