module "cloud_storage" {
  source = "../modules/storage/azure"
  name = "${var.first_name}-${var.last_name}"
}