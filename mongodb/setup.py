from pymongo import MongoClient


def main():
    myclient = MongoClient("mongodb://0.0.0.0:27017/")
    mydb = myclient["testdb"]

    # collections
    test_collection = mydb["test_collection"]

    # insert data
    data = {"name": "John", "address": "Highway 37"}
    test_collection.insert_one(data)

    results = test_collection.find({})
    for result in results:
        print(result)

    # drop database
    myclient.drop_database("testdb")


if __name__ == "__main__":
    main()
