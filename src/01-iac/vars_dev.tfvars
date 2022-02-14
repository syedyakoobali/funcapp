
##########################Resource Group#################################
prefix              = "dbc"
project             = "pi"
environment         = "prod"
location            = "australiaeast"
#########################################################################

#######################Virtual Network###################################
vnet_cidr_range     = ["192.168.0.0/16"]
pep         = ["192.168.0.0/24"]
la            = ["192.168.1.0/24"]

########################################################################

#########################azure container registry########################

acr_name            = "dbcpiacrprod01"
acr-sku             = "Basic"
admin_enabled       = true
#########################################################################

################################AKS Cluster##############################

admin_username       = "azureuser"
admin_password       = "TK2I1XKIVX1E9sjkI"
kubernetes_version   = "1.21.2"
cluster_name         = "dbc-pi-aks-prod-01"
nodepoolname         = "nodepool1"
system_node_count    = 3
aks-vm_size          = "Standard_B2s"
node_pool_max_pods   = 60
orchestrator_version = "1.21.2"
os_disk_size         = "50"
network_plugin       = "azure"
network_policy       = "azure"
docker_bridge_cidr   = "172.17.0.1/16"
dns_service_ip       = "10.0.0.10"
service_cidr         = "10.0.0.0/16"
load_balancer_sku    = "Standard"
client_app_id        = "f2bfb2c1-fee0-4434-9387-b7123fe9ca69"
server_app_id        = "20524806-d54c-48ea-9a7f-bc5df29e7d95"
server_app_secret    = "8Zmi9h_cE5z-lXVq~AsWV2-Bj2Um3-1.~u"
tenant_id            = "20662f19-dcf5-43db-861d-23acdd8eeb44"
client_id            = "eeaf80fb-ca5c-46cf-9fc0-d46519d4b172"
client_secret        = "U-2uM-8gv11o9-1QcjH7fEE7Z-W11F-15Y"
#principal_id        = "eeaf80fb-ca5c-46cf-9fc0-d46519d4b172"
#object_id           = "c0a7d9d8-5624-4ca7-94c0-36e3ffdf58a0"
dnszonename          = "dbc.ip.net"

#########################################################################

############################## APIM #####################################

apim_name      = "dbcpiapimprod01"
publisher_name = "DBC"
email          = "yakoob.ali@softobiz.com"
apim_sku       = "Developer_1"

#########################################################################

#########################Application Gateway#############################

appgw-pub_ip_sku              = "standard"
gateway_ipconfiguration_name  = "my-gateway-ip-configuration"
appgway-fpname                = "dbc-fp-name" 
frontend_portname1            = "httpsPort"
frontend_portname2            = "httpPort"
appgway-bename                = "dbcbackend"
appgway-http                  = "dbc-http"
appgway-list                  = "dbc-httplistner"
appgway-fename                = "dbc-feip"
log_analytics_workspace_sku   = "PerGB2018"
appgway-rqrt                  = "dbc-rrule"

#########################################################################

#############################Function App################################

funapp_strg            = "dbcstrgfunapprod01"
funapp_strgtier        = "Standard"
funapp_replicationtype = "LRS"
funapp_asp_tier        = "Dynamic"
container              = "dbcpifappcontainer"
#########################################################################

#################################Key Vault ##############################

keyvault_sku           = "standard"
#########################################################################

###############################PostGRE SQL###############################

postgresqluser             = "Administrators"
postgresqlpassword         = "Admin@123456"
postgresql_sku             = "GP_Gen5_4"
postgresql_version         = "11"
postgresql_storage_mb      = "5120"
firewallrulename           = "allow_all_ips"

#########################################################################

##########################Azure Service Bus #############################
asb_sku                   = "Standard"
nametopic1                = "listing"
nametopic2                = "office"
nametopic3                = "staff"
nametopic4                = "team"
nametopic5                = "dbc-services"
nametopic6                = "milestone-create"
sb_subscriber             = "logic-app-subscriber"
tar                       = "write"
asb_max_delivery_count    = "2"
topicsize                 = "5120"
msg_ttl                   = "P100DT12H"
max_lock_dur              = "PT3M"
######################################################################### 
######################swagger api blob storage###########################

storage_account                               = "dbcpibsprod01"
swagger_blog_storage_account_tier             = "Standard"
swagger_blog_storage_account_replication_type = "LRS"
swagger_blog_storage_account_kind             = "StorageV2"
storageinsights                               = "dbcpiswaggerinsights"
strgcontainer                                 = "dbcpiswaggercontainer"

#########################################################################