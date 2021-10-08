*Settings*
Documentation       Suite de testes da consulta de saldo

Resource            ${EXECDIR}/resources/base.robot

Test Setup          Start Session
Test Teardown       End Session

*Test Cases*
Devo ver o saldo
    Check Balance  1000