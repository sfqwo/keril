import React, { useContext, useState } from 'react';
import { Container, Card, Form, FormControl, Button} from 'react-bootstrap';
import { NavLink, useLocation} from 'react-router-dom';
import { login, registration, check } from '../http/UserAPI';
import { LOGIN_ROUTE, REGISTRATION_ROUTE, SHOP_ROUTE } from '../utils/consts';
import { observer } from 'mobx-react-lite';
import { Context } from '../index';
import { useHistory } from 'react-router-dom/cjs/react-router-dom.min';

const Auth = observer( () => {
  const {user} = useContext(Context);
  const location = useLocation()
  const history = useHistory()
  const isLogin = location.pathname === LOGIN_ROUTE

  const [email,setEmail] = useState('')
  const [password,setPassword] = useState('')

  const click = async () => {
    try{
      if(isLogin){
        const data = await login(email, password)
        if(data.role === 'ADMIN') user.setIsAdmin(true)
      } else{
        const data = await registration(email, password)
        if(data.role === 'ADMIN') user.setIsAdmin(true)
      }
      user.setUser(user)
      user.setIsAuth(true)
      history.push(SHOP_ROUTE)
    }
    catch(e){
      alert(e.message)
    }
  }
  return (
    <Container 
      className='d-flex justify-content-center align-items-center'
      style={{height: window.innerHeight - 60}}>
      <Card className='d-flex justify-content-center align-items-center' style={{width: 500}}>
        <h2>{isLogin ? 'Авторизация' : 'Регистрация'}</h2>
        <Form className='d-flex flex-column'>
          <FormControl 
            className='mt-3'
            placeholder='Введите ваш email...'
            autoComplete="username"
            value={email}
            onChange={e => setEmail(e.target.value)}
          />
          <FormControl 
            className='mt-3'
            placeholder='Введите ваш пароль...'
            type='password'
            name='password'
            autoComplete="current-password"
            value={password}
            onChange={e => setPassword(e.target.value)}
          />
          <Container style={{width: 400}} className='d-flex flex-row justify-content-between mt-3'>
          {isLogin ? 
            <div>
              Нет аккаунта? <NavLink to={REGISTRATION_ROUTE}>Зарегистрируйтесь</NavLink>
            </div>
          : 
            <div>
              Есть аккаунт? <NavLink to={LOGIN_ROUTE}>Войдите</NavLink>
            </div>
          }
            <Button 
            variant={'outline-success'}
            onClick={click}
            >
              Войти
            </Button>
          </Container>
          
        </Form>
      </Card>
    </Container>
  )
})

export default Auth;
