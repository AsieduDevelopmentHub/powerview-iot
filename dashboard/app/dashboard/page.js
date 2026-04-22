export default function Dashboard() {
  return (
    <div style={{ padding: 30 }}>
      <h2>Live Energy Overview</h2>

      <div style={{ display: "grid", gridTemplateColumns: "1fr 1fr 1fr", gap: 20 }}>
        <div>Voltage: 220V</div>
        <div>Current: 1.5A</div>
        <div>Power: 330W</div>
      </div>

      <h3>Estimated Cost</h3>
      <p>GH₵ 12.45 (Today)</p>
    </div>
  );
}