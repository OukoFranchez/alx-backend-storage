#!/usr/bin/env python3
"""Task 9 Module"""

def insert_school(mongo_collection, **kwargs):
    """
    Inserts a new document in a collection
    """
    rslt = mongo_collection.insert_one(kwargs)
    return rslt.inserted_id
