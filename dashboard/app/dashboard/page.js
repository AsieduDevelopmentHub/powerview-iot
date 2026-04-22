async function getData() {
  const res = await fetch("http://localhost:8000/");
  return res.json();
}

export default async function DashboardPage() {
  const data = await getData();

  return (
    <div style={{ padding: 30 }}>
      <h1>PowerView Dashboard</h1>
      <p>{data.message}</p>

      <div>
        <h2>Live Test Values</h2>
        <p>Voltage: 220V</p>
        <p>Current: 1.5A</p>
        <p>Power: 330W</p>
      </div>
    </div>
  );
}