export const postUser = user => (
    $.ajax({
        url: '/api/users',
        method: 'POST',
        data: {user},
    })
);

export const postSession = session => (
    $.ajax({
        url: '/api/session',
        method: 'POST',
        data: {user},
    })
);

export const deleteSession = () => (
    $.ajax({
        url: '/api/session',
        method: 'DELETE',
    })
);