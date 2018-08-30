  ## api 說明
  要裝mongo 指令mongod 執行
  get
  - localhost:3001/api/posts/
  - localhost:3001/api/users/
  - localhost:3001/api/commodities/
  - localhost:3001/api/members/
  - localhost:3001/api/messagers/
    >個別檔案一律 /users/:id 例 /api/users/238428428sdfsdfs  為 id 為238428428sdfsdfs 之 user
  ### others
  - 拿到的token { token: token }
  - post update delete 這些都要有 headers=> authorization: `Bearer ${token}`
  
