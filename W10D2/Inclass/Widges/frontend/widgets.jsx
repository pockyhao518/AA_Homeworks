import React from 'react';
import ReactDOM from 'react-dom';
import Clock from './clock';
import Tabs from './tabs_index'

const tabs = [
    {title: 'one', content: 'I am the first'},
    {title: 'two', content: 'I am the second'},
    {title: 'three', content: 'I am the third'},
]

const Root = () => { return (
    <div >
        <Clock/>

        <div className='interactive'>
            <Tabs objectsArr={tabs}/>

        </div>
    </div>
    )}

document.addEventListener('DOMContentLoaded', () => {
    const root = document.getElementById('main')
    ReactDOM.render(<Root/>, root)
})