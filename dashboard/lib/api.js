export async function getEnergy() {
  const res = await fetch("http://localhost:8000/api/v1/energy/ingest");
  return res.json();
}