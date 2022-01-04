#@IgnoreInspection BashAddShebang

# remove all Windows end of line symbols
sed -i 's/\r//g' /opt/liquibase/*.sh

chmod +x /opt/liquibase/liquid-update.sh