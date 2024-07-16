resource "azurerm_resource_group" "example" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_static_web_app" "example" {
  name                = var.swa_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
}

resource "azurerm_dns_zone" "example" {
  name                = var.dns_name
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_dns_cname_record" "example" {
  name                = var.c_name
  zone_name           = var.dns_name
  resource_group_name = azurerm_resource_group.example.name
  ttl                 = 300
  record              = azurerm_static_web_app.example.default_host_name
}

resource "azurerm_static_web_app_custom_domain" "example" {
  static_web_app_id = azurerm_static_web_app.example.id
  domain_name       = "${azurerm_dns_cname_record.example.name}.${azurerm_dns_cname_record.example.zone_name}"
  validation_type   = "cname-delegation"
}