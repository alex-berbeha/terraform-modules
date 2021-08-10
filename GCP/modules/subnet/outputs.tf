output "subnet_id" {
  value       = google_compute_subnetwork.project-subnet.id
  description = "an identifier for the resource with format projects/{{project}}/regions/{{region}}/subnetworks/{{name}}"
}

output "self_link" {
  value       = google_compute_subnetwork.project-subnet.self_link
  description = "The URI of the created resource"
}