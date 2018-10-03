## 基本環境配置
1. 確定安裝 redux dev tools 
2. 點擊tools按鈕
3. 在執行時查看state具體之狀況

### 常用函式
#### mapStateToProps(state)
- 查看state之內容 使之能夠於component內使用
##### 具體指令: 
``` javascript
mapStateToProps(state) {
  return {
    user: state.user
  }
}
```
Component內使用state之內容
<br />

``` javascript
  this.props.user
```
#### mapDispatchToProps(dispatch)
- 查看action creator之內容 使之能夠於component內dispatch
##### 具體指令: 
``` javascript
mapDispatchToProps(dispatch) {
  return {
    userActions: bindActionCreators(UserActions,dispatch)
  }
}
```
Component內使用dispatch
<br />

``` javascript
  this.props.userActions.fetchUser(id); // in UserActions have a function fetchUser(id)
```
### 常見生命週期異步處理
#### Flag
- 設定 this.state 以Component內的state控制
``` javascript
// in constructor
constructor(props) {
  super(props);
  this.state = { isFetch: false };
}
// in componentDidMount if your fetch is done change the state
componentDidMount() {
  this.props.userActions.fetchUser(id, () => {
    this.setState({isFetch: true});
  });
  // a callback to controll if ajax request is done
}
```
#### componentDidMount
- mount完成後執行
``` javascript
componentDidMount() {
  // the code you want to execute ...ajax
}
```
#### componentDidUpdate
- render後執行
``` javascript
componentDidUpdate(prevProps, prevState, snapshot) {
  // the code you want to execute ...ajax
  // usually execute after some ajax request completed
}
```
#### componentWillUnmount
- unmount前執行
``` javascript
componentDidUpdate() {
  // usually execute some dispatch to clear part of state(redux)
}
```
### 處理data structure
- 合併array
``` javascript
  array.concat(array2);
```
- 展開object 後合併
``` javascript
obj = { ...state, ...action.payload }
// state is object
// const state = { id: '123' };
// const action.payload = { _id: 'dsfs213', name: 'dsfsd' };
// console.log(obj); -> 
// obj = { id: '123', _id: 'dsfs213', name: 'dsfsd' }
```
- Push id to Array
``` javascript
  array.push(id);
```
- Object add a key with array
``` javascript
  const object = { ...state, addArray: array };
  // const array = ['123'];
  // console.log(object) ->
  // { ..., addArray: ['123'] }
```
- Array map 每個array內元素皆執行一次
``` javascript
  this.props.user.postOrder( (commodity, i) => {
    // some thing you want to do for each element(commodity)
    // etc.
    this.props.commodityActions.fetch(commodity);
    // const postOrder = ['123', '213', '324' ];
    // execute three times
    // commodity = 1. 123 2. 213 3. 324
    // typeof(commodity) === String
  });
```
