Incident.create!([
  { title: "Sample Incident 1", description: "Description of incident 1", severity: "Low", reported_at: Time.now },
  { title: "Sample Incident 2", description: "Description of incident 2", severity: "High", reported_at: Time.now },
  { title: "Sample Incident 3", description: "Description of incident 3", severity: "Medium", reported_at: Time.now }
])
