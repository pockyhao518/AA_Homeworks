import React from 'react';

class Header extends React.Component{
    render(){
        let currentTitle = this.props.currentTab;
        let title = this.props.allTabs.map((el, idx) => {
            let eltitle = el.title;
            let currentClass = '';
            if (idx === currentTitle){
                currentClass = 'active';
            }
            return(
                <li
                    key={idx}
                    className={currentClass}
                    onClick={()=> this.props.clickTab(idx) }
                    >
                    {eltitle}
                </li>
            )
        });
        return(
            <div className='tab-header'>
                {title}
            </div>
        )
        
    }
}


class Tabs extends React.Component{
    constructor(props){
        super(props);
        this.state = {
            selected: 0
        };
        this.selectTab = this.selectTab.bind(this)
    }
    
    selectTab(arg){
        this.setState({selected: arg})
    }

    render(){
        let tab = this.props.objectsArr[this.state.selected]

        return (
            <div>
                <h1>Tabs</h1>
                <div className="tabs">
                    <Header
                        allTabs={this.props.objectsArr}
                        currentTab = {this.state.selected}
                        clickTab = {this.selectTab}
                    />
                    <div className="tab-content" >
                        <article>
                            {tab.content}
                        </article>
                    </div>
                </div>
            </div>
        )
    }

}

export default Tabs;