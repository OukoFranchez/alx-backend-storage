#!/usr/bin/env python3
'''Task 8 Module'''

def list_all(mongo_collection):
    """List all documents in a mongo collection"""
    return [doc for doc in mongo_collection.find()]
