import React, {useContext} from 'react';
import {Context} from '..';
import {Container, Navbar, Nav, NavLink, Button, Image} from 'react-bootstrap'
import {ADMIN_ROUTE, BASKET_ROUTE, LOGIN_ROUTE, SHOP_ROUTE} from '../utils/consts';
import {observer} from 'mobx-react-lite';
import {useHistory} from 'react-router-dom';
import basket from '../assets/basket.svg'

const NavBar = observer(() => {
        const {user} = useContext(Context)
        const {device} = useContext(Context)
        const history = useHistory()
        const logOut = () => {
            user.setUser({})
            user.setIsAuth(false)
            user.setIsAdmin(false)
        }

        return (
            <Navbar bg="dark" variant="dark">
                <Container>
                    <div
                        className="d-flex flex-row">
                        <NavLink
                            style={{color: 'white'}}
                            onClick={() => history.push(SHOP_ROUTE)}
                        >
                            KERIL
                        </NavLink>
                        <form
                            className="form-inline"
                        >
                            <div className="btn-group d-flex justify-content-around">
                                <input
                                    type="text"
                                    className="form-control"
                                    placeholder="Название товара..."
                                    onChange={e => device.setLineSearch(e.target.value)}
                                />
                                <button
                                    className="btn btn-outline-light"
                                    onClick={(e) => {
                                        e.preventDefault();
                                        device.setClickSearch(true)
                                        history.push(SHOP_ROUTE + "?name=" + device.lineSearch)
                                    }}
                                >
                                    Поиск
                                </button>
                            </div>
                        </form>
                    </div>

                    {user.isAuth ?
                        (user.isAdmin ?
                                <Nav className="d-flex">
                                    <Button
                                        className="me-2"
                                        variant={"outline-light"}
                                        onClick={() => history.push(ADMIN_ROUTE)}
                                    >
                                        Панель администратора
                                    </Button>
                                    <Button
                                        variant={"outline-light"}
                                        onClick={() => logOut()}
                                    >
                                        Выйти
                                    </Button>
                                </Nav>
                                :
                                <Nav className="d-flex">
                                    <Button
                                        className="me-2"
                                        variant={"outline-light"}
                                        onClick={() => history.push(BASKET_ROUTE)}
                                    >
                                        Перейти к корзине <Image src={basket} style={{width: 20}}></Image>
                                    </Button>
                                    <Button
                                        variant={"outline-light"}
                                        onClick={() => logOut()}
                                    >
                                        Выйти
                                    </Button>
                                </Nav>
                        )
                        :
                        <Nav>
                            <Button
                                variant={"outline-light"}
                                onClick={() => history.push(LOGIN_ROUTE)}
                            >
                                Авторизация
                            </Button>
                        </Nav>
                    }
                </Container>
            </Navbar>
        )
    }
)
export default NavBar;
