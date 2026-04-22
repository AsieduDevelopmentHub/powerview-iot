def calculate_cost(power_watts: float, hours: float, tariff: float):
    kwh = (power_watts * hours) / 1000
    cost = kwh * tariff

    return {
        "kwh": round(kwh, 2),
        "cost": round(cost, 2)
    }