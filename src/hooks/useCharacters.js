
import { useQuery, gql } from '@apollo/client';

    const GET_CHARACTERS = gql`
    //Enter your Graphql Query here to list names of all characters using rick and morty api.
`;

export const useCharacters = () => {
    const { error, loading, data } = useQuery(GET_CHARACTERS);
    return{
        error,
        loading,
        data
     };

};
