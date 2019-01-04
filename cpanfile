requires "Carp" => "0";
requires "Exporter" => "0";
requires "List::Util" => "0";
requires "Time::Piece" => "0";
requires "base" => "0";
requires "perl" => "5.008";
requires "strict" => "0";
requires "utf8" => "0";
requires "vars" => "0";
requires "warnings" => "0";

on 'build' => sub {
  requires "Module::Build" => "0.28";
};

on 'test' => sub {
  requires "Test::Exception" => "0";
  requires "Test::More" => "0";
};

on 'configure' => sub {
  requires "Module::Build" => "0.28";
};

on 'develop' => sub {
  requires "Test::More" => "0";
  requires "Test::Version" => "1";
};
