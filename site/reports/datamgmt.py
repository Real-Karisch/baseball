def queryset2dict(queryset, keys):
    output = {key: [] for key in keys}

    for obj in queryset:
        for key in keys:
            output[key].append(obj.serializable_value(key))

    return output