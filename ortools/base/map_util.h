// Copyright 2010-2014 Google
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef OR_TOOLS_BASE_MAP_UTIL_H_
#define OR_TOOLS_BASE_MAP_UTIL_H_

#include <utility>
#include "ortools/base/logging.h"

namespace operations_research {

// Perform a lookup in a map or hash_map.
// If the key is present in the map then the value associated with that
// key is returned, otherwise the value passed as a default is returned.
template <class Collection>
const typename Collection::value_type::second_type& FindWithDefault(
    const Collection& collection,
    const typename Collection::value_type::first_type& key,
    const typename Collection::value_type::second_type& value) {
  typename Collection::const_iterator it = collection.find(key);
  if (it == collection.end()) {
    return value;
  }
  return it->second;
}

// Perform a lookup in a map or hash_map.
// If the key is present a const pointer to the associated value is returned,
// otherwise a NULL pointer is returned.
template <class Collection>
const typename Collection::value_type::second_type* FindOrNull(
    const Collection& collection,
    const typename Collection::value_type::first_type& key) {
  typename Collection::const_iterator it = collection.find(key);
  if (it == collection.end()) {
    return 0;
  }
  return &it->second;
}

// Perform a lookup in a map or hash_map.
// Same as above but the returned pointer is not const and can be used to change
// the stored value.
template <class Collection>
typename Collection::value_type::second_type* FindOrNull(
    Collection& collection,  // NOLINT
    const typename Collection::value_type::first_type& key) {
  typename Collection::iterator it = collection.find(key);
  if (it == collection.end()) {
    return 0;
  }
  return &it->second;
}

// Perform a lookup in a map or hash_map whose values are pointers.
// If the key is present a const pointer to the associated value is returned,
// otherwise a NULL pointer is returned.
// This function does not distinguish between a missing key and a key mapped
// to a NULL value.
template <class Collection>
const typename Collection::value_type::second_type FindPtrOrNull(
    const Collection& collection,
    const typename Collection::value_type::first_type& key) {
  typename Collection::const_iterator it = collection.find(key);
  if (it == collection.end()) {
    return 0;
  }
  return it->second;
}

// Change the value associated with a particular key in a map or hash_map.
// If the key is not present in the map the key and value are inserted,
// otherwise the value is updated to be a copy of the value provided.
// True indicates that an insert took place, false indicates an update.
template <class Collection, class Key, class Value>
bool InsertOrUpdate(Collection* const collection, const Key& key,
                    const Value& value) {
  std::pair<typename Collection::iterator, bool> ret =
      collection->insert(typename Collection::value_type(key, value));
  if (!ret.second) {
    // update
    ret.first->second = value;
    return false;
  }
  return true;
}

// Insert a new key and value into a map or hash_map.
// If the key is not present in the map the key and value are
// inserted, otherwise nothing happens. True indicates that an insert
// took place, false indicates the key was already present.
template <class Collection, class Key, class Value>
bool InsertIfNotPresent(Collection* const collection, const Key& key,
                        const Value& value) {
  std::pair<typename Collection::iterator, bool> ret =
      collection->insert(typename Collection::value_type(key, value));
  return ret.second;
}

// Inserts a new std::pair<key,value> into a map or hash_map.
// Insert a new key into a set or hash_set.
// Dies if the key is already present.
template <class Collection>
void InsertOrDie(Collection* const collection,
                 const typename Collection::value_type& value) {
  CHECK(collection->insert(value).second) << "duplicate value: " << value;
}

// Inserts a new key/value into a map or hash_map.
// Dies if the key is already present.
template <class Collection>
void InsertOrDie(Collection* const collection,
                 const typename Collection::value_type::first_type& key,
                 const typename Collection::value_type::second_type& data) {
  typedef typename Collection::value_type value_type;
  CHECK(collection->insert(value_type(key, data)).second)
      << "duplicate key: " << key;
}

// Perform a lookup in map or hash_map.
// If the key is present and value is non-NULL then a copy of the value
// associated with the key is made into *value. Returns whether key was present.
template <class Collection, class Key, class Value>
bool FindCopy(const Collection& collection, const Key& key,
              Value* const value) {
  typename Collection::const_iterator it = collection.find(key);
  if (it == collection.end()) {
    return false;
  }
  if (value) {
    *value = it->second;
  }
  return true;
}

// Test to see if a set, map, hash_set or hash_map contains a particular key.
// Returns true if the key is in the collection.
template <class Collection, class Key>
bool ContainsKey(const Collection& collection, const Key& key) {
  typename Collection::const_iterator it = collection.find(key);
  return it != collection.end();
}

template <class Collection>
const typename Collection::value_type::second_type& FindOrDie(
    const Collection& collection,
    const typename Collection::value_type::first_type& key) {
  typename Collection::const_iterator it = collection.find(key);
  CHECK(it != collection.end()) << "Map key not found: " << key;
  return it->second;
}

// Lookup a key in a map or hash_map, insert it if it is not present.
// Returns a reference to the value associated with the key.
template <class Collection>
typename Collection::value_type::second_type& LookupOrInsert(
    Collection* const collection,
    const typename Collection::value_type::first_type& key,
    const typename Collection::value_type::second_type& value) {
  std::pair<typename Collection::iterator, bool> ret =
      collection->insert(typename Collection::value_type(key, value));
  return ret.first->second;
}
}  // namespace operations_research

#endif  // OR_TOOLS_BASE_MAP_UTIL_H_
