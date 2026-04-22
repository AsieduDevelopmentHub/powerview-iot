def process_energy(data):
    voltage = data.get("voltage", 0)
    current = data.get("current", 0)
    power = voltage * current

    return {
        "voltage": voltage,
        "current": current,
        "power": power
    }