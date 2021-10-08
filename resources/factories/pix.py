

def factory_valid_pix_data():

    pix_data = {
        "bank": "Nubank",
        "key": "1234",
        "value": "100",
        "newBalance": "900"
    }

    return pix_data

def factory_zero_pix_data():

    pix_data = {
        "bank": "Neon",
        "key": "9876",
        "value": "0",
    }

    return pix_data

def factory_negative_pix_data():

    pix_data = {
        "bank": "Next",
        "key": "4567",
        "value": "-1",
    }

    return pix_data