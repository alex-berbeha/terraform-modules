output "vpc_id" {
  value       = google_compute_network.project-network.id
  description = "an identifier for the resource with format projects/{{project}}/global/networks/{{name}}"
}

output "self_link" {
  value       = google_compute_network.project-network.self_link
  description = "The URI of the created resource"
}