import React from 'react'
// Delete this function for better highlights
// Alternatively, just delete the generic
const mappedWithKeys = <T>(set: Set<T>): Set<{ key: T, value: T }> => (
  set.values().map(value => ({key: value, value: value }))
)

// Not even comments highlight appropriately?
// function mappedWithKeys<T>(set: Set<T>): Set<{ key: T, value: T }> => (
//   set.values().map(value => ({key: value, value: value }))
// )

interface Props {
  mySet: Set<T> 
}

const MyComponent = ({ mySet }: Props) => (
  <div>
    {mappedWithKeys(mySet).map(({ key, value }) => (
      <li key={key}>
        {value}
      </li>
    ))}
  </div>
)

export default MyComponent
