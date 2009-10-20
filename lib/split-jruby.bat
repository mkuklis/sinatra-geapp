del jruby-core.jar
del ruby-stdlib.jar
rd /sq tmp_unpack
mkdir tmp_unpack
cd tmp_unpack
jar xf ../jruby-complete.jar
cd ..

mkdir jruby-core
move tmp_unpack/org jruby-core/
move tmp_unpack/com jruby-core/
move tmp_unpack/jline jruby-core/
move tmp_unpack/jay jruby-core/
move tmp_unpack/jruby jruby-core/
cd jruby-core
jar cf ../jruby-core.jar .
cd ../tmp_unpack
jar cf ../ruby-stdlib.jar .
cd ..
rd /sq jruby-core
rd /sq tmp_unpack
del jruby-complete.jar