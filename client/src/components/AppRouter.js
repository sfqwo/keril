import React from 'react';
import {Switch, Route, Redirect} from 'react-router-dom'
import { useContext } from 'react';
import { Context } from '..';
import { authRoutes, publicRoutes } from '../routes';
import { SHOP_ROUTE } from '../utils/consts';
import { observer } from 'mobx-react-lite';

const AppRouter = observer( () => {
  const {user} = useContext(Context)
  return (
    <Switch>
      {user.isAuth && authRoutes.map(({path, component}) =>
        <Route key = {path}  path = {path} component = {component} exact/>
      )}
      {publicRoutes.map(({path, component}) =>
        <Route key = {path}  path = {path} component = {component} exact/>
      )}
      <Redirect to = {SHOP_ROUTE} />
     
    </Switch>
  )
})

export default AppRouter;
