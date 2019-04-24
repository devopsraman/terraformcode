mkdir infrav1.0
cp -R *.sh infrav1.0
cp -R *.tf infrav1.0
cp -R D* infrav1.0

fpm -s dir -t rpm -n infra -v 1.1 --description"testingcode" infrav1.0
