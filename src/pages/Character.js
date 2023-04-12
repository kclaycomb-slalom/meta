import React from "react";
import './Character.css';
import { useCharacter } from "../hooks/useCharacter";
import {useParams} from 'react-router';

export default function Character() {
    //Write the method to obtain id from route params.

    //write the method to call useCharacter witht the id value


    if (error) return <div> something went wrong</div>
    if (loading) return <div> spinner</div>

    return ( <div>
    </div>
// write the html/logic that displays the character image, name, gender and the episodes they featured
    )
}
