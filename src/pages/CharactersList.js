import React from "react";
import { useCharacters } from "../hooks/useCharacters";
import './CharacterList.css';
import { Link } from "react-router-dom";



export default function CharactersList() {
  const {error, loading, data}  = useCharacters();

  if (loading) return <div>spinner ...</div>;
  if (error) return <div> something went wrong</div>;

  return (
    <div></div>

    //write the html/logic to return a grid displaying the name and image of the character
    //Note that the queried data is available in the variable "data".

  )

}
