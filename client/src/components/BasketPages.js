import React, {useContext} from 'react';
import {observer} from "mobx-react-lite";
import {Context} from "../index";
import {Pagination} from "react-bootstrap";

const BasketPages = observer(() => {

    const {basket} = useContext(Context)
    const pageCount = Math.ceil(basket.totalCount / basket.limit)
    const pages = []

    for (let i = 0; i < pageCount; i++) {
        pages.push(i + 1)
    }

    return (
        <Pagination className="mt-3">
            {pages.map(page =>
                <Pagination.Item
                    key={page}
                    active={basket.page === page}
                    onClick={() => {
                        basket.setPage(page)
                        console.log(basket)
                    }}
                >
                    {page}
                </Pagination.Item>
            )}
        </Pagination>
    );
});

export default BasketPages;