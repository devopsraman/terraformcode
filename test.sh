mkdir infrav1.0
cp -R terraformcode/*.sh infrav1.0
cp -R terraformcode/*.tf infrav1.0
cp -R terraformcode/D* infrav1.0
cp -R terraformcode/P* infrav1.0
fpm -s dir -t rpm -n infra -v 1.1 --description"testingcode" infrav1.0
