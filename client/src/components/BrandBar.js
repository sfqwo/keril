import { observer } from "mobx-react-lite";
import { useContext } from "react";
import { Card, Row } from "react-bootstrap";
import { Context } from "..";

const BrandBar = observer(() => {
    const {device} = useContext(Context)
    return(
        <Row className = 'd-flex'>
            {device.brands.map(brand => 
                <Card style={{width: 150, cursor: 'pointer'}} 
                    onClick={(e)=>{
                        e.preventDefault();
                        brand.id === device.selectedBrand.id ? device.setSelectedBrand({}) : device.setSelectedBrand(brand)
                    }}
                    border={(brand.id === device.selectedBrand.id) ? 'success' : 'light'}
                    key = {brand.id}
                    className='p-3 m-auto mt-3'
                >
                    {brand.name}
                </Card>
            )}
        </Row>
    )
})

export default BrandBar;