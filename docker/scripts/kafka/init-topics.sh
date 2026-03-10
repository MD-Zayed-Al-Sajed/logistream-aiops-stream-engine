#!/bin/sh
set -e

echo "Waiting for Kafka to be ready..."
until kafka-topics --bootstrap-server kafka:9092 --list >/dev/null 2>&1; do
  sleep 2
done

echo "Creating Kafka topics if missing..."

kafka-topics --bootstrap-server kafka:9092 --create --if-not-exists \
  --topic ingest.shipment_events.v1 --partitions 1 --replication-factor 1

kafka-topics --bootstrap-server kafka:9092 --create --if-not-exists \
  --topic ingest.gps_points.v1 --partitions 1 --replication-factor 1

kafka-topics --bootstrap-server kafka:9092 --create --if-not-exists \
  --topic proc.shipment_features_json.v1 --partitions 1 --replication-factor 1

kafka-topics --bootstrap-server kafka:9092 --create --if-not-exists \
  --topic proc.shipment_alerts.v1 --partitions 1 --replication-factor 1

echo "Kafka topics ensured."