import React ,{useState} from 'react'
import {NavLink} from 'react-router-dom'
import {Collapse, Navbar, NavbarToggler,NavbarBrand,Nav,NavItem} from 'reactstrap';

export const MyNavbar=()=> {
  const [collapsed, setCollapsed] = useState(true);
  const toggleNavbar = () => setCollapsed(!collapsed);
  return (
    <div>
      <Navbar color="faded" light>
        <NavbarBrand href="#" className="me-auto">
          <img src="img/pizza.png" alt="pizza" style={{width:"40px"}} />
        </NavbarBrand>
        <NavbarToggler onClick={toggleNavbar} className="me-2" />
        <Collapse isOpen={!collapsed} navbar>
          <Nav navbar>
            <NavItem>
              <NavLink onClick={toggleNavbar} className="nav-link" to="/">Főoldal</NavLink>
            </NavItem>
            <NavItem>
              <NavLink onClick={toggleNavbar} className="nav-link" to="/products">Pizzák</NavLink>
            </NavItem>
            <NavItem>
              <NavLink onClick={toggleNavbar}  className="nav-link" to="/contact">Kapcsolat</NavLink>
            </NavItem>
          </Nav>
        </Collapse>
      </Navbar>
    </div>
  );
}


