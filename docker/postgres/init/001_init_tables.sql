CREATE TABLE IF NOT EXISTS shipment_features (
    id BIGSERIAL PRIMARY KEY,
    shipment_id TEXT,
    route_id TEXT,
    hub_id TEXT,
    status TEXT,
    event_ts TIMESTAMPTZ,
    eta_baseline_minutes INTEGER,
    is_delayed BOOLEAN,
    route_hub_key TEXT
);

CREATE TABLE IF NOT EXISTS shipment_alerts (
    id BIGSERIAL PRIMARY KEY,
    route_id TEXT,
    hub_id TEXT,
    route_hub_key TEXT,
    alert_type TEXT,
    delay_rate DOUBLE PRECISION,
    total_events INTEGER,
    delayed_events INTEGER,
    last_shipment_id TEXT,
    last_status TEXT,
    last_event_ts TIMESTAMPTZ
);