output "cache_cluster_id" {
  value = aws_elasticache_cluster.this.id
}

output "cache_cluster_address" {
  value = aws_elasticache_cluster.this.cache_nodes[0].address
}

output "cache_cluster_port" {
  value = aws_elasticache_cluster.this.port
}
