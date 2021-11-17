import { observer } from "mobx-react-lite";
import { useContext } from "react";
import { ListGroupItem } from "react-bootstrap";
import { Context } from "..";

const TypeBar = observer(() => {
    const {device} = useContext(Context)
    return(
        <ul className="list-group mt-3">
            {device.types.map(type => 
                <ListGroupItem 
                    active={type.id === device.selectedType.id}
                    style={{
                        cursor: 'pointer', 
                        background: type.id === device.selectedType.id ? 'lightgrey' : 'inherit',
                        borderColor: 'lightgrey'
                    }}
                    onClick={(e)=>{
                        e.preventDefault();
                        type.id === device.selectedType.id ? device.setSelectedType({}) : device.setSelectedType(type)
                    }}
                    key={type.id}
                >
                    {type.name}
                </ListGroupItem>
            )}
        </ul>
    )
})

export default TypeBar;